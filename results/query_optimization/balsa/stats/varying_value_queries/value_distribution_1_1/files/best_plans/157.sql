/*+ MergeJoin(v u p b)
 MergeJoin(v u p)
 MergeJoin(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>137 AND p.Score<181 AND p.CommentCount>8 AND p.CommentCount<18 AND u.DownVotes>42 AND u.DownVotes<730 AND v.CreationDate>'2011-06-16 06:27:24'::timestamp AND v.CreationDate<'2012-07-29 14:24:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2014-03-06 09:27:39'::timestamp AND b.Date<'2014-09-05 12:12:55'::timestamp;

