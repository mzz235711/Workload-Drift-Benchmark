/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<88 AND p.CommentCount>17 AND p.CommentCount<43 AND u.DownVotes>124 AND u.DownVotes<512 AND v.CreationDate>'2012-04-03 15:32:44'::timestamp AND v.CreationDate<'2012-12-07 11:13:18'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-09-27 16:06:55'::timestamp AND b.Date<'2013-08-22 05:19:01'::timestamp;

