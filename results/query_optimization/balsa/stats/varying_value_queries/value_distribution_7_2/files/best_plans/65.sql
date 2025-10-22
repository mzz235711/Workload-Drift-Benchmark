/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<160 AND p.CommentCount>15 AND p.CommentCount<22 AND u.DownVotes>354 AND u.DownVotes<1568 AND v.CreationDate>'2009-10-13 07:43:40'::timestamp AND v.CreationDate<'2013-02-06 17:50:24'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2010-12-19 16:03:37'::timestamp AND b.Date<'2011-09-21 04:57:01'::timestamp;

