/*+ NestLoop(v p u b)
 MergeJoin(v p u)
 MergeJoin(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<36 AND p.CommentCount>0 AND p.CommentCount<14 AND u.DownVotes>352 AND u.DownVotes<1771 AND v.CreationDate>'2010-07-15 08:55:13'::timestamp AND v.CreationDate<'2011-11-17 11:19:38'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2011-07-24 22:37:59'::timestamp AND b.Date<'2014-02-05 21:20:55'::timestamp;

