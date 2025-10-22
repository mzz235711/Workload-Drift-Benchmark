/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<51 AND p.CommentCount>10 AND p.CommentCount<35 AND u.DownVotes>223 AND u.DownVotes<1905 AND v.CreationDate>'2010-03-08 21:51:06'::timestamp AND v.CreationDate<'2014-07-20 09:14:06'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-07-31 01:13:47'::timestamp AND b.Date<'2014-04-20 15:07:06'::timestamp;

