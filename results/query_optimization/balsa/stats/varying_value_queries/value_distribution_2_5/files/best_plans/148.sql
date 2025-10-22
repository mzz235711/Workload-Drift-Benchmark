/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>59 AND p.Score<70 AND p.CommentCount>1 AND p.CommentCount<31 AND u.DownVotes>156 AND u.DownVotes<980 AND v.CreationDate>'2010-12-20 20:20:15'::timestamp AND v.CreationDate<'2013-01-28 14:42:30'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2013-11-21 05:09:02'::timestamp AND b.Date<'2014-04-25 08:10:24'::timestamp;

