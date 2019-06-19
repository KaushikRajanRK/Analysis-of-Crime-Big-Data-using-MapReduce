import java.io.IOException;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;

public class HourMapper extends Mapper<LongWritable, Text, Text, IntWritable>
{  

            public void map(LongWritable key, Text value, Context context)
                    throws IOException, InterruptedException
                    {
                Text outputkey = new Text();
                IntWritable outputvalue = new IntWritable();
                String[] arrLine = value.toString().split(",");
                               
                String field5;
                              
                field5=arrLine[4];
                outputvalue.set(Integer.parseInt(field5));
               
               
                outputkey.set(field5);
                
               
                context.write(outputkey, outputvalue);
                              
        }
           
}