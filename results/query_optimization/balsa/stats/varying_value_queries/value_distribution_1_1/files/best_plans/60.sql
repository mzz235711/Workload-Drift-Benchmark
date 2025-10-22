/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>58 AND p.Score<189 AND p.CommentCount>4 AND p.CommentCount<43 AND u.DownVotes>28 AND u.DownVotes<1446 AND v.CreationDate>'2009-03-20 06:05:25'::timestamp AND v.CreationDate<'2012-12-22 03:15:32'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2011-01-25 20:26:42'::timestamp AND b.Date<'2014-01-31 09:51:18'::timestamp;

