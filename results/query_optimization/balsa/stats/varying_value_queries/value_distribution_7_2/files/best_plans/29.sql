/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<108 AND p.CommentCount>11 AND p.CommentCount<33 AND u.DownVotes>642 AND u.DownVotes<1275 AND v.CreationDate>'2010-04-16 22:17:23'::timestamp AND v.CreationDate<'2011-06-18 10:40:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-07-18 19:34:29'::timestamp AND b.Date<'2012-01-04 10:37:43'::timestamp;

