/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>137 AND p.Score<179 AND p.CommentCount>9 AND p.CommentCount<21 AND u.DownVotes>6 AND u.DownVotes<1666 AND v.CreationDate>'2009-07-12 22:05:00'::timestamp AND v.CreationDate<'2012-11-15 10:18:49'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2012-07-23 10:33:22'::timestamp AND b.Date<'2012-10-13 00:18:44'::timestamp;

