/*+ NestLoop(u p v b)
 NestLoop(u p v)
 MergeJoin(u p)
 SeqScan(u)
 SeqScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>75 AND p.Score<168 AND p.CommentCount>1 AND p.CommentCount<3 AND u.DownVotes>72 AND u.DownVotes<911 AND v.CreationDate>'2011-05-21 15:13:28'::timestamp AND v.CreationDate<'2012-01-02 05:04:49'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<6 AND b.Date>'2012-02-02 16:15:11'::timestamp AND b.Date<'2012-03-11 04:16:31'::timestamp;

