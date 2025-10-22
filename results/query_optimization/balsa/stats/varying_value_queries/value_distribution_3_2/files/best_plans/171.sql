/*+ HashJoin(b v u p)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<169 AND p.CommentCount>2 AND p.CommentCount<9 AND u.DownVotes>49 AND u.DownVotes<1654 AND v.CreationDate>'2009-11-08 00:36:41'::timestamp AND v.CreationDate<'2014-07-26 23:19:05'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2011-08-16 20:19:52'::timestamp AND b.Date<'2013-06-24 20:46:56'::timestamp;

