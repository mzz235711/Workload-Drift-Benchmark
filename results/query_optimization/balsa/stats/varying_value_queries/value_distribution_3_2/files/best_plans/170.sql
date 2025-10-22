/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>41 AND p.Score<169 AND p.CommentCount>7 AND p.CommentCount<12 AND u.DownVotes>19 AND u.DownVotes<1475 AND v.CreationDate>'2009-04-06 17:44:32'::timestamp AND v.CreationDate<'2012-05-14 04:18:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-02-07 06:41:12'::timestamp AND b.Date<'2014-03-03 20:32:47'::timestamp;

