import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * Created by Tobias Watzl (K1648014) on 06.05.2017.
 */

public aspect LoggingAspect {

	pointcut publicMethodExecuted(): execution(public * *(..));

	final static Logger logger = LogManager.getLogger(LoggingAspect.class);

	before(): publicMethodExecuted() {
		logger.debug(String.format("Entering Method: %s.", thisJoinPoint.getSignature()));
	}

	after(): publicMethodExecuted() {
		logger.debug(String.format("Leaving Method: %s.", thisJoinPoint.getSignature()));
	}

}
