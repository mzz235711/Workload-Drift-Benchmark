/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>89 AND p.Score<136 AND p.CommentCount>4 AND p.CommentCount<30 AND u.DownVotes>680 AND u.DownVotes<1340 AND v.CreationDate>'2011-04-15 07:56:06'::timestamp AND v.CreationDate<'2014-06-29 21:45:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2012-10-19 05:50:59'::timestamp AND b.Date<'2014-04-22 19:55:30'::timestamp;

