/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<67 AND p.CommentCount>19 AND p.CommentCount<36 AND u.DownVotes>648 AND u.DownVotes<1589 AND v.CreationDate>'2010-04-26 15:19:06'::timestamp AND v.CreationDate<'2014-05-16 14:31:32'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2012-03-02 17:53:27'::timestamp AND b.Date<'2012-09-28 13:22:40'::timestamp;

