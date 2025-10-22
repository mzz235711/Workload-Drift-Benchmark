/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<71 AND p.CommentCount>14 AND p.CommentCount<16 AND u.DownVotes>672 AND u.DownVotes<1697 AND v.CreationDate>'2011-08-18 07:40:27'::timestamp AND v.CreationDate<'2014-03-20 04:01:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2012-12-01 16:57:30'::timestamp AND b.Date<'2013-02-05 07:43:07'::timestamp;

