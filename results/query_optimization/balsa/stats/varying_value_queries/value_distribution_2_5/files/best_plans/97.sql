/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<26 AND p.CommentCount>12 AND p.CommentCount<28 AND u.DownVotes>590 AND u.DownVotes<1637 AND v.CreationDate>'2012-04-12 23:47:56'::timestamp AND v.CreationDate<'2013-01-03 10:40:08'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2012-11-22 09:12:17'::timestamp AND b.Date<'2013-12-03 17:09:00'::timestamp;

