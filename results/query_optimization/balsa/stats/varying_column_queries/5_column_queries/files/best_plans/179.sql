/*+ HashJoin(v u b)
 HashJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(b)
 Leading(((v u) b)) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND u.Reputation>=1 AND u.Reputation<=9604 AND u.Views>=0 AND u.Views<=31 AND u.CreationDate<='2014-09-08 05:55:03'::timestamp;

