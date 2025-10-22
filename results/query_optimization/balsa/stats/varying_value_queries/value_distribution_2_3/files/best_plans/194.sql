/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<14 AND p.CommentCount>6 AND p.CommentCount<24 AND u.DownVotes>555 AND u.DownVotes<834 AND v.CreationDate>'2009-07-23 22:15:17'::timestamp AND v.CreationDate<'2013-04-18 06:28:09'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<12 AND b.Date>'2013-01-19 13:56:33'::timestamp AND b.Date<'2013-01-22 03:31:52'::timestamp;

