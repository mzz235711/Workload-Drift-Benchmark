/*+ MergeJoin(u c v)
 HashJoin(c v)
 IndexScan(u)
 IndexScan(c)
 SeqScan(v)
 Leading((u (c v))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-08-02 21:42:06'::timestamp AND c.CreationDate<='2014-09-13 20:06:21'::timestamp AND v.BountyAmount>=0 AND u.Views<=87 AND u.DownVotes<=0;

