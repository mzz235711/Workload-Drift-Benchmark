/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<118 AND p.CommentCount>2 AND p.CommentCount<35 AND u.DownVotes>542 AND u.DownVotes<1091 AND v.CreationDate>'2012-05-16 17:06:23'::timestamp AND v.CreationDate<'2014-04-02 01:08:51'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<8 AND b.Date>'2013-03-06 11:40:23'::timestamp AND b.Date<'2013-10-28 12:07:27'::timestamp;

