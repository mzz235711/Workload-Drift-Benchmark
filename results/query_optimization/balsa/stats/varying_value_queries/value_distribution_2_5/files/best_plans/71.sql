/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<98 AND p.CommentCount>15 AND p.CommentCount<21 AND u.DownVotes>595 AND u.DownVotes<1291 AND v.CreationDate>'2009-03-10 13:11:27'::timestamp AND v.CreationDate<'2011-01-16 19:11:55'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-08-11 21:31:39'::timestamp AND b.Date<'2013-01-12 04:42:01'::timestamp;

