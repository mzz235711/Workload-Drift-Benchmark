/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<107 AND p.CommentCount>8 AND p.CommentCount<19 AND u.DownVotes>139 AND u.DownVotes<1879 AND v.CreationDate>'2011-03-18 17:52:26'::timestamp AND v.CreationDate<'2014-04-10 00:03:05'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<13 AND b.Date>'2013-06-07 00:44:58'::timestamp AND b.Date<'2014-08-06 02:21:07'::timestamp;

