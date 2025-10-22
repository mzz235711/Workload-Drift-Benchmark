/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<104 AND p.CommentCount>7 AND p.CommentCount<41 AND u.DownVotes>543 AND u.DownVotes<1678 AND v.CreationDate>'2010-04-27 00:25:42'::timestamp AND v.CreationDate<'2011-12-31 17:56:21'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2013-07-12 02:43:50'::timestamp AND b.Date<'2014-03-16 17:28:17'::timestamp;

