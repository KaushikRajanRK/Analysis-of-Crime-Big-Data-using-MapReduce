import java.io.IOException;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.LongWritable;


public class ShiftMapper extends Mapper<LongWritable, Text, Text, IntWritable>
{
   

            public void map(LongWritable key, Text value, Context context)
                    throws IOException, InterruptedException
                    {
                Text outputkey = new Text();
                IntWritable outputvalue = new IntWritable();
                String[] arrLine = value.toString().split(",");
               
                
                String field1;
               
               
                field1=arrLine[0];
               
               
               
                outputkey.set(field1);
                
               
                context.write(outputkey, outputvalue);
               
               
        }
           
}