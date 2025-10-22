/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>55 AND p.Score<128 AND p.CommentCount>7 AND p.CommentCount<18 AND u.DownVotes>57 AND u.DownVotes<1472 AND v.CreationDate>'2011-07-25 01:16:03'::timestamp AND v.CreationDate<'2014-01-04 02:58:51'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-05-22 03:26:02'::timestamp AND b.Date<'2013-11-26 02:19:02'::timestamp;

