/*+ MergeJoin(c b v u)
 HashJoin(b v u)
 HashJoin(v u)
 IndexScan(c)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 Leading((c (b (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-12 11:10:25'::timestamp AND u.Views=4 AND u.DownVotes>=0;

