/*+ HashJoin(u c p v b)
 HashJoin(u c p v)
 NestLoop(u c p)
 MergeJoin(u c)
 IndexScan(u)
 SeqScan(c)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading(((((u c) p) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND c.Score=1 AND p.PostTypeId=1 AND p.FavoriteCount>=0 AND v.CreationDate>='2010-07-22 00:00:00'::timestamp AND b.Date>='2010-07-28 11:38:54'::timestamp AND b.Date<='2014-08-29 12:25:32'::timestamp AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.CreationDate>='2011-04-11 16:06:30'::timestamp;

