/*+ HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.CreationDate>='2010-07-20 14:51:44'::timestamp AND u.Views>=0 AND u.DownVotes=0 AND u.UpVotes<=24 AND u.CreationDate>='2010-08-02 20:53:57'::timestamp;

