/*+ MergeJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<69 AND p.CommentCount>16 AND p.CommentCount<35 AND u.DownVotes>212 AND u.DownVotes<1662 AND v.CreationDate>'2009-11-29 18:32:11'::timestamp AND v.CreationDate<'2014-07-15 08:15:32'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-07-07 03:08:43'::timestamp AND b.Date<'2012-12-13 01:53:53'::timestamp;

