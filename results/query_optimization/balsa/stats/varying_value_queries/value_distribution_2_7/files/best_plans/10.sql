/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>78 AND p.Score<167 AND p.CommentCount>0 AND p.CommentCount<37 AND u.DownVotes>37 AND u.DownVotes<1625 AND v.CreationDate>'2012-03-27 06:40:59'::timestamp AND v.CreationDate<'2013-02-22 06:28:30'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2011-12-24 13:45:10'::timestamp AND b.Date<'2013-03-25 09:00:00'::timestamp;

