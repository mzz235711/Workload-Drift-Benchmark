/*+ HashJoin(ph b pl p u v)
 MergeJoin(b pl p u v)
 HashJoin(pl p u v)
 HashJoin(p u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(u)
 IndexScan(v)
 Leading((ph (b (pl (p (u v)))))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.Score<=59 AND p.AnswerCount=0 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.CreationDate<='2014-08-30 10:03:37'::timestamp AND pl.CreationDate>='2011-05-02 16:01:55'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-09-15 14:18:53'::timestamp AND ph.CreationDate<='2014-08-28 00:58:13'::timestamp AND b.Date>='2010-07-21 07:13:12'::timestamp AND b.Date<='2014-09-11 16:18:23'::timestamp AND u.DownVotes=0 AND u.CreationDate>='2010-07-19 06:55:26'::timestamp AND u.CreationDate<='2014-08-25 22:57:20'::timestamp;

