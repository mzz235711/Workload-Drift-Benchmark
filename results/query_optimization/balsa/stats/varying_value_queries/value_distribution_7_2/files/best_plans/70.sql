/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<59 AND p.CommentCount>17 AND p.CommentCount<22 AND u.DownVotes>647 AND u.DownVotes<1346 AND v.CreationDate>'2009-12-03 04:02:17'::timestamp AND v.CreationDate<'2011-03-04 16:31:11'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-04-18 08:21:25'::timestamp AND b.Date<'2011-05-04 22:18:29'::timestamp;

