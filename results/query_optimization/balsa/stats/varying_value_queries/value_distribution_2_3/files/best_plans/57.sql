/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<113 AND p.CommentCount>4 AND p.CommentCount<12 AND u.DownVotes>288 AND u.DownVotes<1914 AND v.CreationDate>'2011-01-12 18:51:05'::timestamp AND v.CreationDate<'2011-07-11 18:23:07'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2012-08-24 09:25:25'::timestamp AND b.Date<'2012-09-25 16:28:44'::timestamp;

