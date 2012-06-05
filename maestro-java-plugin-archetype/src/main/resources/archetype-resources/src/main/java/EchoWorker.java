#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package};

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.maestrodev.MaestroWorker;

public class EchoWorker
    extends MaestroWorker
{

    private final Logger logger = LoggerFactory.getLogger( this.getClass() );

    /**
     * ${taskDescription}
     */
    public void ${taskCommand}()
    {
        logger.info("Running task ${taskName}");

        writeOutput("Running task ${taskName}");
        writeOutput(getField("msg"));

        setField("body", getField("msg"));
    }
}
