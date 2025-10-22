/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<69 AND p.CommentCount>16 AND p.CommentCount<40 AND u.DownVotes>23 AND u.DownVotes<309 AND v.CreationDate>'2011-02-13 18:38:37'::timestamp AND v.CreationDate<'2011-04-05 01:25:45'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<13 AND b.Date>'2011-05-22 13:07:52'::timestamp AND b.Date<'2014-08-12 14:24:56'::timestamp;

