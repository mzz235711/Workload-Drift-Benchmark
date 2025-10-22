/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<91 AND p.CommentCount>3 AND p.CommentCount<36 AND u.DownVotes>104 AND u.DownVotes<420 AND v.CreationDate>'2011-05-14 00:11:31'::timestamp AND v.CreationDate<'2011-12-24 16:05:30'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<15 AND b.Date>'2010-12-26 04:35:18'::timestamp AND b.Date<'2011-08-26 19:54:15'::timestamp;

