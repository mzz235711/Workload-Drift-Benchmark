/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<55 AND p.CommentCount>0 AND p.CommentCount<34 AND u.DownVotes>441 AND u.DownVotes<1470 AND v.CreationDate>'2010-04-27 17:23:57'::timestamp AND v.CreationDate<'2013-04-12 11:34:25'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2010-09-13 02:57:47'::timestamp AND b.Date<'2012-09-08 06:22:22'::timestamp;

