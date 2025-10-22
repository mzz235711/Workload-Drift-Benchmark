/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>58 AND p.Score<76 AND p.CommentCount>2 AND p.CommentCount<16 AND u.DownVotes>689 AND u.DownVotes<860 AND v.CreationDate>'2011-09-24 23:01:16'::timestamp AND v.CreationDate<'2012-08-16 18:17:02'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2011-09-25 02:36:21'::timestamp AND b.Date<'2012-02-25 13:23:39'::timestamp;

