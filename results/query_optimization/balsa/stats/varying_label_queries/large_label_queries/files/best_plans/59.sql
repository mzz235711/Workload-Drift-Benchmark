/*+ HashJoin(c b v u)
 MergeJoin(b v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((c (b (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND b.Date<='2014-09-02 16:08:44'::timestamp AND u.Reputation>=1 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-03 08:26:11'::timestamp;

