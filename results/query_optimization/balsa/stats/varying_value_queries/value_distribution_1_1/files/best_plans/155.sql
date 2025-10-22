/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<162 AND p.CommentCount>15 AND p.CommentCount<36 AND u.DownVotes>345 AND u.DownVotes<918 AND v.CreationDate>'2010-06-22 17:20:46'::timestamp AND v.CreationDate<'2012-12-15 23:36:46'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2012-03-21 16:48:28'::timestamp AND b.Date<'2012-03-25 13:38:13'::timestamp;

