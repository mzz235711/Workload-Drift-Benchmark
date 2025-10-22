/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<80 AND p.CommentCount>14 AND p.CommentCount<30 AND u.DownVotes>438 AND u.DownVotes<935 AND v.CreationDate>'2010-11-13 17:17:35'::timestamp AND v.CreationDate<'2013-05-09 03:29:36'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2012-03-10 01:40:52'::timestamp AND b.Date<'2014-04-08 11:21:56'::timestamp;

