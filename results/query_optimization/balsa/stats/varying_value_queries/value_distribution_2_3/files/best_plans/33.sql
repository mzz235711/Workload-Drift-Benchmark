/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<88 AND p.CommentCount>12 AND p.CommentCount<28 AND u.DownVotes>383 AND u.DownVotes<1908 AND v.CreationDate>'2011-01-23 03:15:02'::timestamp AND v.CreationDate<'2014-07-23 12:56:01'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-12-10 04:10:52'::timestamp AND b.Date<'2014-04-06 12:37:02'::timestamp;

