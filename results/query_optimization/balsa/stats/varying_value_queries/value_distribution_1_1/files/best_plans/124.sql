/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>90 AND p.Score<167 AND p.CommentCount>5 AND p.CommentCount<14 AND u.DownVotes>7 AND u.DownVotes<1638 AND v.CreationDate>'2010-09-10 08:34:05'::timestamp AND v.CreationDate<'2013-12-11 13:37:37'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2012-05-04 18:19:31'::timestamp AND b.Date<'2013-07-15 02:39:30'::timestamp;

