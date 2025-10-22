/*+ HashJoin(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(p)
 SeqScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<135 AND p.CommentCount>5 AND p.CommentCount<40 AND u.DownVotes>378 AND u.DownVotes<1679 AND v.CreationDate>'2009-04-01 00:51:26'::timestamp AND v.CreationDate<'2014-01-03 23:20:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2010-10-25 13:26:56'::timestamp AND b.Date<'2011-11-20 02:57:27'::timestamp;

