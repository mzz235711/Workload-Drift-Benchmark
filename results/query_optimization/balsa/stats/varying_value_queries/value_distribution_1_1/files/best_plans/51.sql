/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>107 AND p.Score<163 AND p.CommentCount>3 AND p.CommentCount<27 AND u.DownVotes>724 AND u.DownVotes<1841 AND v.CreationDate>'2014-06-27 21:37:29'::timestamp AND v.CreationDate<'2014-08-30 18:00:50'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-03-05 07:04:15'::timestamp AND b.Date<'2011-08-30 20:45:07'::timestamp;

