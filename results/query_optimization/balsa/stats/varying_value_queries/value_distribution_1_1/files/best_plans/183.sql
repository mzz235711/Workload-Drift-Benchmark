/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<174 AND p.CommentCount>2 AND p.CommentCount<43 AND u.DownVotes>698 AND u.DownVotes<1202 AND v.CreationDate>'2011-06-21 14:56:26'::timestamp AND v.CreationDate<'2013-10-29 04:00:04'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2011-05-01 20:00:55'::timestamp AND b.Date<'2013-09-06 00:32:47'::timestamp;

