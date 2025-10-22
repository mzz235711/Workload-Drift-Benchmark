/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>90 AND p.Score<166 AND p.CommentCount>8 AND p.CommentCount<21 AND u.DownVotes>165 AND u.DownVotes<1649 AND v.CreationDate>'2012-01-12 14:22:18'::timestamp AND v.CreationDate<'2013-05-09 16:12:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-01-19 17:56:10'::timestamp AND b.Date<'2013-10-06 16:16:30'::timestamp;

