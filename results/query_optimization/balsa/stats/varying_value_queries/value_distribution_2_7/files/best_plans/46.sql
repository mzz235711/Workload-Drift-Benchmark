/*+ NestLoop(u b p v)
 MergeJoin(u b p)
 MergeJoin(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 IndexScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>37 AND p.Score<45 AND p.CommentCount>5 AND p.CommentCount<20 AND u.DownVotes>7 AND u.DownVotes<1834 AND v.CreationDate>'2013-01-06 03:38:53'::timestamp AND v.CreationDate<'2013-02-14 12:49:16'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-03-26 06:58:33'::timestamp AND b.Date<'2012-06-04 12:32:25'::timestamp;

