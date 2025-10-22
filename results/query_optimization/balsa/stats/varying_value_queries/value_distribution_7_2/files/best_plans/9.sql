/*+ HashJoin(b v u p)
 MergeJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 IndexScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>95 AND p.Score<118 AND p.CommentCount>13 AND p.CommentCount<16 AND u.DownVotes>117 AND u.DownVotes<272 AND v.CreationDate>'2010-09-25 07:47:38'::timestamp AND v.CreationDate<'2014-09-01 08:14:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-03-08 18:22:35'::timestamp AND b.Date<'2013-07-24 10:54:12'::timestamp;

