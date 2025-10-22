/*+ HashJoin(c v u)
 NestLoop(v u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=1 AND c.CreationDate>='2010-07-26 13:31:30'::timestamp AND c.CreationDate<='2014-09-10 20:19:08'::timestamp AND v.BountyAmount<=50 AND u.Reputation<=128 AND u.Views<=94 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate<='2014-08-26 23:45:19'::timestamp;

