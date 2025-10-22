/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>119 AND p.Score<157 AND p.CommentCount>2 AND p.CommentCount<39 AND u.DownVotes>457 AND u.DownVotes<1725 AND v.CreationDate>'2011-06-18 11:16:32'::timestamp AND v.CreationDate<'2012-10-11 22:33:27'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-04-03 18:06:23'::timestamp AND b.Date<'2012-02-15 04:41:55'::timestamp;

