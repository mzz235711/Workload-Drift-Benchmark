/*+ HashJoin(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<140 AND p.CommentCount>0 AND p.CommentCount<28 AND u.DownVotes>311 AND u.DownVotes<1206 AND v.CreationDate>'2009-05-17 22:36:06'::timestamp AND v.CreationDate<'2011-07-03 05:37:16'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2012-08-07 22:39:55'::timestamp AND b.Date<'2014-03-14 09:22:14'::timestamp;

