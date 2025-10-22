/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>62 AND p.Score<187 AND p.CommentCount>1 AND p.CommentCount<27 AND u.DownVotes>261 AND u.DownVotes<1871 AND v.CreationDate>'2011-08-29 11:20:30'::timestamp AND v.CreationDate<'2013-05-17 14:51:30'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2011-06-14 02:01:02'::timestamp AND b.Date<'2013-08-19 08:02:17'::timestamp;

