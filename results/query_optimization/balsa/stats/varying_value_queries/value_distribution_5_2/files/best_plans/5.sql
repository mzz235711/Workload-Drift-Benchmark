/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>66 AND p.Score<100 AND p.CommentCount>8 AND p.CommentCount<34 AND u.DownVotes>85 AND u.DownVotes<1312 AND v.CreationDate>'2012-02-22 22:04:44'::timestamp AND v.CreationDate<'2014-04-05 13:29:13'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2013-06-22 03:19:06'::timestamp AND b.Date<'2014-03-04 23:21:48'::timestamp;

