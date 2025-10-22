/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<68 AND p.CommentCount>7 AND p.CommentCount<20 AND u.DownVotes>282 AND u.DownVotes<1072 AND v.CreationDate>'2010-05-10 17:50:28'::timestamp AND v.CreationDate<'2013-07-31 11:25:58'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<8 AND b.Date>'2012-04-01 15:10:04'::timestamp AND b.Date<'2014-03-07 06:27:02'::timestamp;

