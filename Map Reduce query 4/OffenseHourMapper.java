import java.io.IOException;
import java.util.StringTokenizer;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.NullWritable;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.mapreduce.Mapper.Context;


public class OffenseHourMapper extends Mapper<LongWritable, Text, Text, IntWritable>
{
    private final static IntWritable one = new IntWritable(1);
    private Text word = new Text();

    @Override
    public void map(LongWritable key, Text value,
                    Mapper.Context context) throws IOException, InterruptedException
    {
        String[] line = value.toString().split(",");
       
        String OFFENSE,Hour,StringConcat;
        
        
      
        OFFENSE= line[1];
        Hour=line[4];
      
        StringConcat = Hour + "\t\t" + OFFENSE+"\t\t";
        word.set(StringConcat);
        context.write(word, one);
       
    }
}