/*+ MergeJoin(b u p v)
 HashJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<138 AND p.CommentCount>2 AND p.CommentCount<35 AND u.DownVotes>102 AND u.DownVotes<1245 AND v.CreationDate>'2009-11-10 11:23:59'::timestamp AND v.CreationDate<'2010-12-26 14:44:09'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2011-03-11 10:19:12'::timestamp AND b.Date<'2014-07-10 21:42:09'::timestamp;

