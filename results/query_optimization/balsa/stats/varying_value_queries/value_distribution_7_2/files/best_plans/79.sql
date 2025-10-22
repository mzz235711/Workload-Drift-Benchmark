/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>47 AND p.Score<115 AND p.CommentCount>4 AND p.CommentCount<29 AND u.DownVotes>320 AND u.DownVotes<1804 AND v.CreationDate>'2011-05-01 06:30:29'::timestamp AND v.CreationDate<'2012-05-21 09:11:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-06-22 18:42:29'::timestamp AND b.Date<'2011-12-26 12:51:04'::timestamp;

