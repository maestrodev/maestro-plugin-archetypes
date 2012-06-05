#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package};

import static org.junit.Assert.*;

import java.io.IOException;
import java.io.InputStream;

import org.apache.commons.io.IOUtils;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.junit.Test;

/**
 * Tests for Maestro Cloud plugin.
 */
public class EchoWorkerTest
{
    private static final JSONParser parser = new JSONParser();

    /**
     * Test for ${taskName}
     */
    @Test
    public void ${taskCommand}()
        throws Exception
    {
        EchoWorker worker = new EchoWorker();

        worker.setWorkitem( loadJson( "echo" ) );

        // provision
        worker.${taskCommand}();

        assertNull( worker.getError() );
        assertEquals( "This is a test message", worker.getField("body") );

        // TODO: worker needs a mock connection so we can capture the output and check that was what was sent
    }

    public JSONObject loadJson( String name )
        throws IOException, ParseException
    {
        InputStream is = null;
        try
        {
            String f = name + ".json";
            is = getClass().getClassLoader().getResourceAsStream( f );
            if ( is == null )
            {
                throw new IllegalStateException( "File not found " + f );
            }
            else
            {
                return (JSONObject) parser.parse( IOUtils.toString( is ) );
            }
        }
        finally
        {
            IOUtils.closeQuietly( is );
        }
    }

}
